package com.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

public interface Command {
	public int execute(HttpServletRequest request, HttpServletRequest response) throws ServletException, IOException;
}
