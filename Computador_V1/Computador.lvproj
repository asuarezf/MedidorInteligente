<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Property Name="varPersistentID:{09CABBF7-904B-46EF-924D-39F227C07299}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300034</Property>
	<Property Name="varPersistentID:{0E826842-B6C1-4028-9CF4-22B994C6D39C}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300010</Property>
	<Property Name="varPersistentID:{1CB2A7AA-E1C4-46BE-8510-B47C3B3CD98C}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300007</Property>
	<Property Name="varPersistentID:{3C38424D-E420-45AB-9CE7-626CE9257A3A}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300011</Property>
	<Property Name="varPersistentID:{5989F1DE-4148-4B20-8BF5-C3F3F84E03D2}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300029</Property>
	<Property Name="varPersistentID:{61E10F04-993C-4C97-887D-5C1B0DF305E2}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300037</Property>
	<Property Name="varPersistentID:{62C94DA4-AAAA-4636-A705-FB1EE3B6FD7B}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300032</Property>
	<Property Name="varPersistentID:{648BC894-D584-4DF0-BB0B-E7920FA00201}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300025</Property>
	<Property Name="varPersistentID:{68724B79-22EB-4CB9-8D94-218B11BE5C4A}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300005</Property>
	<Property Name="varPersistentID:{6DBAA795-30FE-437F-9983-126C2AAD492D}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300002</Property>
	<Property Name="varPersistentID:{736380E4-B2AF-4BA5-8FC6-20FAFB0B5D8A}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300023</Property>
	<Property Name="varPersistentID:{7A3F0405-3764-4BCC-A5B9-B33BBB8DB288}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300016</Property>
	<Property Name="varPersistentID:{8ABBCA8C-6F21-4F81-8E8A-9F28DBE24D52}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300038</Property>
	<Property Name="varPersistentID:{8CA0E1CE-5572-437F-A4C6-F708F8F5B8DA}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300019</Property>
	<Property Name="varPersistentID:{8D2D21EF-B9DE-47BA-B64B-3AA1502E4104}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300001</Property>
	<Property Name="varPersistentID:{8DFEC800-AFDB-435F-B37F-C9124AE587B5}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300035</Property>
	<Property Name="varPersistentID:{AC8D8F1E-FE8A-41E4-AB47-1D9C84A5ECC5}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300014</Property>
	<Property Name="varPersistentID:{B6E0440A-E889-4E36-9F52-D1A445C66BA8}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300031</Property>
	<Property Name="varPersistentID:{B8AB7AB4-E092-441D-9385-30010D8613F6}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300020</Property>
	<Property Name="varPersistentID:{BC0C0C5D-5BD5-47AC-B58D-5CD2ECD03646}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300013</Property>
	<Property Name="varPersistentID:{C38A0CC2-8842-4D33-872F-3840447DD0B7}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300004</Property>
	<Property Name="varPersistentID:{CB41287A-2F7A-4248-9F06-54AC2FF49B75}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300017</Property>
	<Property Name="varPersistentID:{DFF13FBA-DC3E-43D5-840C-2A8B4D5488F8}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300026</Property>
	<Property Name="varPersistentID:{E65DEEB3-12E3-48D7-BF72-AFEF34345639}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300028</Property>
	<Property Name="varPersistentID:{E81BE3AC-1C07-4E24-8E87-4229BA20F215}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300022</Property>
	<Property Name="varPersistentID:{EB1FBD8D-46AB-4C78-8BF0-5DF45D1A79E9}" Type="Ref">/My Computer/Modbus_Computador.lvlib/D300008</Property>
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
		<Item Name="Interfaz_Computador.vi" Type="VI" URL="../Interfaz_Computador.vi"/>
		<Item Name="Modbus_Computador.lvlib" Type="Library" URL="../Modbus_Computador.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_DSC.lvlib" Type="Library" URL="/&lt;vilib&gt;/lvdsc/NI_DSC.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="PRC_Deploy.vi" Type="VI" URL="/&lt;vilib&gt;/lvdsc/process/internal/PRC_Deploy.vi"/>
				<Item Name="PRC_MakeFullPathWithCurrentVIsCallerPath.vi" Type="VI" URL="/&lt;vilib&gt;/lvdsc/process/internal/PRC_MakeFullPathWithCurrentVIsCallerPath.vi"/>
				<Item Name="PRC_MutipleDeploy.vi" Type="VI" URL="/&lt;vilib&gt;/lvdsc/process/internal/PRC_MutipleDeploy.vi"/>
				<Item Name="PRC_Undeploy.vi" Type="VI" URL="/&lt;vilib&gt;/lvdsc/process/internal/PRC_Undeploy.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
			</Item>
			<Item Name="Conversion_DBL-2INT.vi" Type="VI" URL="../Conversion_DBL-2INT.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
