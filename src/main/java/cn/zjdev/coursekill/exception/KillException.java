package cn.zjdev.coursekill.exception;

/**
 * 自定义秒杀异常，供其他自定义异常继承
 *
 */
public class KillException extends RuntimeException {

    public KillException(String message) {
        super(message);
    }

    public KillException(String message, Throwable cause) {
        super(message, cause);
    }
}
