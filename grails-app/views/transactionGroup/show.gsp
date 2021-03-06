
<%@ page import="com.smanggin.trackingmanagement.TransactionGroup" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'transactionGroup.label', default: 'TransactionGroup')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-transactionGroup" class="first">
	<div class="row">
		<div class="col-lg-12">
			<div class="box box-primary">
				<div class="box-header with-border">
                  <h3 class="box-title"><g:message code="default.show.label" args="[entityName]" /></h3>
                </div><!--/.box-header with-border -->	
                <div class="box-body table-responsive">
					<table class="table table-striped">
						<tbody>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.updatedBy.label" default="Updated By" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "updatedBy")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.createdBy.label" default="Created By" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "createdBy")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.dateCreated.label" default="Date Created" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${transactionGroupInstance?.dateCreated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.lastUpdated.label" default="Last Updated" /></td>
								
								<td valign="top" class="value"><g:formatDate date="${transactionGroupInstance?.lastUpdated}" /></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.name.label" default="Name" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "name")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.numberingMethod.label" default="Numbering Method" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "numberingMethod")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.plant.label" default="Plant" /></td>
								
								<td valign="top" class="value"><g:link controller="plant" action="show" id="${transactionGroupInstance?.plant?.id}">${transactionGroupInstance?.plant?.encodeAsHTML()}</g:link></td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.prefix.label" default="Prefix" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "prefix")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.productionInHeaders.label" default="Production In Headers" /></td>
								
								<td valign="top" style="text-align: left;" class="value">
									<ul>
									<g:each in="${transactionGroupInstance.productionInHeaders}" var="p">
										<li><g:link controller="productionInHeader" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
									</g:each>
									</ul>
								</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.qCHeaders.label" default="QCH eaders" /></td>
								
								<td valign="top" style="text-align: left;" class="value">
									<ul>
									<g:each in="${transactionGroupInstance.qCHeaders}" var="q">
										<li><g:link controller="QCHeader" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
									</g:each>
									</ul>
								</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.serverId.label" default="Server Id" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "serverId")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.transactionType.label" default="Transaction Type" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "transactionType")}</td>
								
							</tr>
						
							<tr class="prop">
								<td valign="top" class="name"><g:message code="transactionGroup.width.label" default="Width" /></td>
								
								<td valign="top" class="value">${fieldValue(bean: transactionGroupInstance, field: "width")}</td>
								
							</tr>
						
						</tbody>
					</table>
				</div><!--/.row -->
				<div class="box-footer clearfix">
						
				</div><!--/.box-footer clearfix -->
			</div><!--/.box-body table-responsive -->

			<g:render template="detail"/> 
		</div><!--/.box box-primary -->
	</div><!--/.row -->
</section>

</body>

</html>
