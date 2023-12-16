%dw 2.0
output application/json
---
{
	correlationId: correlationId,
	statusCode: vars.httpStatus,
	errorType: error.errorType.identifier,
	description: error.description,
	detailErrorType: vars.errorObject.errorType,
	detailDescription: vars.errorObject.description,
	errorPayload: vars.errorObject.muleMessage.payload,
	originalPayload: vars.requestPayload
}