<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Property Name="varPersistentID:{50C324BD-8A5B-42F6-99D8-D94468F88463}" Type="Ref">/My Computer/DataBase.lvlib/000006</Property>
	<Property Name="varPersistentID:{5EBB411B-DB31-423B-9730-70EE65E8C7BA}" Type="Ref">/My Computer/DataBase.lvlib/000007</Property>
	<Property Name="varPersistentID:{62EF9F38-6811-4CFB-AF6E-F3B885CB06B4}" Type="Ref">/My Computer/DataBase.lvlib/000010</Property>
	<Property Name="varPersistentID:{6468C4D5-DB2B-4826-A715-F9621983C6B7}" Type="Ref">/My Computer/DataBase.lvlib/000001</Property>
	<Property Name="varPersistentID:{7419F48B-B735-43E1-AF46-AB5C0621FDE7}" Type="Ref">/My Computer/DataBase.lvlib/000004</Property>
	<Property Name="varPersistentID:{7F618010-EA77-4225-B0B1-0D281849A111}" Type="Ref">/My Computer/DataBase.lvlib/000005</Property>
	<Property Name="varPersistentID:{DADA09A2-9DE0-4F86-A15E-03D2EC90A8BD}" Type="Ref">/My Computer/DataBase.lvlib/000003</Property>
	<Property Name="varPersistentID:{E102E0E2-F556-4E14-8855-ED08FFA63DE3}" Type="Ref">/My Computer/DataBase.lvlib/000002</Property>
	<Property Name="varPersistentID:{F5B29B07-8BDB-40EF-9A94-95AB68ABF2CD}" Type="Ref">/My Computer/DataBase.lvlib/000009</Property>
	<Property Name="varPersistentID:{FC1DC052-3118-41F0-8F7B-8D30F1A17B6E}" Type="Ref">/My Computer/DataBase.lvlib/000008</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="DataBase.lvlib" Type="Library" URL="../DataBase.lvlib"/>
		<Item Name="Master.vi" Type="VI" URL="../Master.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_DSC.lvlib" Type="Library" URL="/&lt;vilib&gt;/lvdsc/NI_DSC.lvlib"/>
				<Item Name="PRC_Deploy.vi" Type="VI" URL="/&lt;vilib&gt;/lvdsc/process/internal/PRC_Deploy.vi"/>
				<Item Name="PRC_MakeFullPathWithCurrentVIsCallerPath.vi" Type="VI" URL="/&lt;vilib&gt;/lvdsc/process/internal/PRC_MakeFullPathWithCurrentVIsCallerPath.vi"/>
				<Item Name="PRC_MutipleDeploy.vi" Type="VI" URL="/&lt;vilib&gt;/lvdsc/process/internal/PRC_MutipleDeploy.vi"/>
				<Item Name="PRC_Undeploy.vi" Type="VI" URL="/&lt;vilib&gt;/lvdsc/process/internal/PRC_Undeploy.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
