package com.ync.biz.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class PointcutCommon {
	@Pointcut("execution(* com.ync.biz..*Impl.*(..))")
	public void allPointcut() {}

	@Pointcut("execution(* com.ync.biz..*Impl.get*(..))")
	public void getPointcut() {}
}
