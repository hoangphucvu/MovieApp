﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18408
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WcfApp.ServiceXuatChieu {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="XuatChieu", Namespace="http://schemas.datacontract.org/2004/07/WcfServiceApp")]
    [System.SerializableAttribute()]
    public partial class XuatChieu : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string CaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int IDField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.DateTime NgayField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string PhongField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Ca {
            get {
                return this.CaField;
            }
            set {
                if ((object.ReferenceEquals(this.CaField, value) != true)) {
                    this.CaField = value;
                    this.RaisePropertyChanged("Ca");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int ID {
            get {
                return this.IDField;
            }
            set {
                if ((this.IDField.Equals(value) != true)) {
                    this.IDField = value;
                    this.RaisePropertyChanged("ID");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime Ngay {
            get {
                return this.NgayField;
            }
            set {
                if ((this.NgayField.Equals(value) != true)) {
                    this.NgayField = value;
                    this.RaisePropertyChanged("Ngay");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Phong {
            get {
                return this.PhongField;
            }
            set {
                if ((object.ReferenceEquals(this.PhongField, value) != true)) {
                    this.PhongField = value;
                    this.RaisePropertyChanged("Phong");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Ngay", Namespace="http://schemas.datacontract.org/2004/07/WcfServiceApp")]
    [System.SerializableAttribute()]
    public partial class Ngay : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.DateTime ngayField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime ngay {
            get {
                return this.ngayField;
            }
            set {
                if ((this.ngayField.Equals(value) != true)) {
                    this.ngayField = value;
                    this.RaisePropertyChanged("ngay");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceXuatChieu.IServiceXuatChieu")]
    public interface IServiceXuatChieu {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServiceXuatChieu/DocTheoPhim", ReplyAction="http://tempuri.org/IServiceXuatChieu/DocTheoPhimResponse")]
        WcfApp.ServiceXuatChieu.XuatChieu[] DocTheoPhim(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServiceXuatChieu/DocTheoPhim", ReplyAction="http://tempuri.org/IServiceXuatChieu/DocTheoPhimResponse")]
        System.Threading.Tasks.Task<WcfApp.ServiceXuatChieu.XuatChieu[]> DocTheoPhimAsync(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServiceXuatChieu/DocTheoMa", ReplyAction="http://tempuri.org/IServiceXuatChieu/DocTheoMaResponse")]
        WcfApp.ServiceXuatChieu.XuatChieu DocTheoMa(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServiceXuatChieu/DocTheoMa", ReplyAction="http://tempuri.org/IServiceXuatChieu/DocTheoMaResponse")]
        System.Threading.Tasks.Task<WcfApp.ServiceXuatChieu.XuatChieu> DocTheoMaAsync(int id);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServiceXuatChieu/layngay", ReplyAction="http://tempuri.org/IServiceXuatChieu/layngayResponse")]
        WcfApp.ServiceXuatChieu.Ngay[] layngay();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServiceXuatChieu/layngay", ReplyAction="http://tempuri.org/IServiceXuatChieu/layngayResponse")]
        System.Threading.Tasks.Task<WcfApp.ServiceXuatChieu.Ngay[]> layngayAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IServiceXuatChieuChannel : WcfApp.ServiceXuatChieu.IServiceXuatChieu, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServiceXuatChieuClient : System.ServiceModel.ClientBase<WcfApp.ServiceXuatChieu.IServiceXuatChieu>, WcfApp.ServiceXuatChieu.IServiceXuatChieu {
        
        public ServiceXuatChieuClient() {
        }
        
        public ServiceXuatChieuClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServiceXuatChieuClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceXuatChieuClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceXuatChieuClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public WcfApp.ServiceXuatChieu.XuatChieu[] DocTheoPhim(int id) {
            return base.Channel.DocTheoPhim(id);
        }
        
        public System.Threading.Tasks.Task<WcfApp.ServiceXuatChieu.XuatChieu[]> DocTheoPhimAsync(int id) {
            return base.Channel.DocTheoPhimAsync(id);
        }
        
        public WcfApp.ServiceXuatChieu.XuatChieu DocTheoMa(int id) {
            return base.Channel.DocTheoMa(id);
        }
        
        public System.Threading.Tasks.Task<WcfApp.ServiceXuatChieu.XuatChieu> DocTheoMaAsync(int id) {
            return base.Channel.DocTheoMaAsync(id);
        }
        
        public WcfApp.ServiceXuatChieu.Ngay[] layngay() {
            return base.Channel.layngay();
        }
        
        public System.Threading.Tasks.Task<WcfApp.ServiceXuatChieu.Ngay[]> layngayAsync() {
            return base.Channel.layngayAsync();
        }
    }
}
