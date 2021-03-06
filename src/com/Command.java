package com;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class Command {
	protected abstract void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
