'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:4.0.30319.42000
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On

Imports System.Data

Namespace localhost
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ServiceModel.ServiceContractAttribute(ConfigurationName:="localhost.WebServiceSoap")>  _
    Public Interface WebServiceSoap
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/GetDetails", ReplyAction:="*"),  _
         System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults:=true)>  _
        Function GetDetails() As System.Data.DataTable
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/GetDetails", ReplyAction:="*")>  _
        Function GetDetailsAsync() As System.Threading.Tasks.Task(Of System.Data.DataTable)
    End Interface
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Public Interface WebServiceSoapChannel
        Inherits localhost.WebServiceSoap, System.ServiceModel.IClientChannel
    End Interface
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Partial Public Class WebServiceSoapClient
        Inherits System.ServiceModel.ClientBase(Of localhost.WebServiceSoap)
        Implements localhost.WebServiceSoap
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String)
            MyBase.New(endpointConfigurationName)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As String)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal binding As System.ServiceModel.Channels.Binding, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(binding, remoteAddress)
        End Sub
        
        Public Function GetDetails() As System.Data.DataTable Implements localhost.WebServiceSoap.GetDetails
            Return MyBase.Channel.GetDetails
        End Function
        
        Public Function GetDetailsAsync() As System.Threading.Tasks.Task(Of System.Data.DataTable) Implements localhost.WebServiceSoap.GetDetailsAsync
            Return MyBase.Channel.GetDetailsAsync
        End Function
    End Class
End Namespace
