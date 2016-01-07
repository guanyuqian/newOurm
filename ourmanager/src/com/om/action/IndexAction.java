package com.om.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.om.model.Notice;
import com.om.model.Om;
import com.om.service.INoticeService;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {
	List Notices = new ArrayList();
	INoticeService noticeService;
	public List getNotices() {
		return Notices;
	}
	public void setNotices(List notices) {
		Notices = notices;
	}
	public INoticeService getNoticeService() {
		return noticeService;
	}
	public void setNoticeService(INoticeService noticeService) {
		this.noticeService = noticeService;
	}
	public String loadlNoticeForIndex() throws IOException  {
		// list = new ArrayList();
		System.out.println("in loadlNoticeForIndex");
		ServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ((HttpServletRequest) request).getSession();
		int omid = ((Om) session.getAttribute("om")).getOmid();
		List<Notice> list = noticeService.LoardSomeServiceForIndex(omid);
		Notices.clear();
		// System.out.println("PAGE_LAST:" + getLAGE_PAGE());
		try {
			for (Notice u : list) {
				Map us = new HashMap();
				us.put("Noticeid", u.getNoticeid());
				us.put("NoticeName", u.getNoticeName());
				us.put("NoticePriority", u.getNoticePriority());
				us.put("NoticeDes", u.getNoticeDes());
				us.put("NoticeEndtime", u.getNoticeEndtime());
				us.put("Editorid", "");
				us.put("EditorName", "");
				if (u.getUserByNoticeEditor() != null) {
					us.put("Editorid", u.getUserByNoticeEditor().getUserid());
					us.put("EditorName", u.getUserByNoticeEditor()
							.getUserName());
				}
				us.put("Createrid", u.getUserByNoticeCreater().getUserid());
				us.put("CreaterName", u.getUserByNoticeCreater().getUserName());
				Notices.add(us);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return SUCCESS;
		}
		return SUCCESS;
	}
}
