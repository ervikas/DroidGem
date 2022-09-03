package apmsa;

public class APMException extends Exception {
	private static final long serialVersionUID = 12345L;

    protected APMException(String errorMessage) {
        super(errorMessage);
    }
}
