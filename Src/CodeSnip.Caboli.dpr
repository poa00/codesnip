program CodeSnip.Caboli;

uses
  Vcl.Forms,
  UThemesEx in 'UThemesEx.pas',
  UMultiCastEvents in 'UMultiCastEvents.pas',
  UMessageWindow in 'UMessageWindow.pas',
  UHiddenWindow in 'UHiddenWindow.pas',
  UStructs in 'UStructs.pas',
  IntfAligner in 'IntfAligner.pas',
  UNulFormAligner in 'UNulFormAligner.pas',
  UAppInfo in 'UAppInfo.pas',
  UBaseObjects in 'UBaseObjects.pas',
  USettings in 'USettings.pas',
  UIStringList in 'UIStringList.pas',
  IntfCommon in 'IntfCommon.pas',
  UStrUtils in 'UStrUtils.pas',
  UConsts in 'UConsts.pas',
  UExceptions in 'UExceptions.pas',
  UHexUtils in 'UHexUtils.pas',
  UIOUtils in 'UIOUtils.pas',
  UUtils in 'UUtils.pas',
  PJSysInfo in '3rdParty\PJSysInfo.pas',
  USystemInfo in 'USystemInfo.pas',
  PJVersionInfo in '3rdParty\PJVersionInfo.pas',
  UI.Forms.Root in 'UI.Forms.Root.pas' {RootForm},
  UControlStateMgr in 'UControlStateMgr.pas',
  UKeysHelper in 'UKeysHelper.pas',
  UMenus in 'UMenus.pas',
  UClassHelpers in 'UClassHelpers.pas',
  UHelpMgr in 'UHelpMgr.pas',
  UI.Forms.Main in 'UI.Forms.Main.pas' {MainForm},
  FrTitled in 'FrTitled.pas' {TitledFrame: TFrame},
  UFontHelper in 'UFontHelper.pas',
  UGraphicUtils in 'UGraphicUtils.pas',
  FrRTFShowCase in 'FrRTFShowCase.pas' {RTFShowCaseFrame: TFrame},
  UShowCaseCtrl in 'UShowCaseCtrl.pas',
  FrProgress in 'FrProgress.pas' {ProgressFrame: TFrame},
  UCtrlArranger in 'UCtrlArranger.pas',
  FrPrefsBase in 'FrPrefsBase.pas' {PrefsBaseFrame: TFrame},
  UPreferences in 'UPreferences.pas',
  Hiliter.UGlobals in 'Hiliter.UGlobals.pas',
  UEncodings in 'UEncodings.pas',
  ULocales in 'ULocales.pas',
  UMeasurement in 'UMeasurement.pas',
  UPrintInfo in 'UPrintInfo.pas',
  USingleton in 'USingleton.pas',
  USnippetPageStructure in 'USnippetPageStructure.pas',
  DB.USnippetKind in 'DB.USnippetKind.pas',
  UContainers in 'UContainers.pas',
  USourceFileInfo in 'USourceFileInfo.pas',
  USourceGen in 'USourceGen.pas',
  ActiveText.UMain in 'ActiveText.UMain.pas',
  DB.USnippet in 'DB.USnippet.pas',
  Compilers.UGlobals in 'Compilers.UGlobals.pas',
  USnippetIDs in 'USnippetIDs.pas',
  ActiveText.UTextRenderer in 'ActiveText.UTextRenderer.pas',
  USnippetValidator in 'USnippetValidator.pas',
  ActiveText.UValidator in 'ActiveText.UValidator.pas',
  UURIEncode in 'UURIEncode.pas',
  DB.UMain in 'DB.UMain.pas',
  DB.UCategory in 'DB.UCategory.pas',
  UReservedCategories in 'UReservedCategories.pas',
  DB.UDatabaseIO in 'DB.UDatabaseIO.pas',
  DBIO.UFileIOIntf in 'DBIO.UFileIOIntf.pas',
  DBIO.UIniDataReader in 'DBIO.UIniDataReader.pas',
  UMainDBFileReader in 'UMainDBFileReader.pas',
  UComparers in 'UComparers.pas',
  USnippetExtraHelper in 'USnippetExtraHelper.pas',
  UREMLDataIO in 'UREMLDataIO.pas',
  UTaggedTextLexer in 'UTaggedTextLexer.pas',
  USnippetCreditsParser in 'USnippetCreditsParser.pas',
  DBIO.UNulDataReader in 'DBIO.UNulDataReader.pas',
  DBIO.UXMLDataIO in 'DBIO.UXMLDataIO.pas',
  UXMLDocumentEx in 'UXMLDocumentEx.pas',
  UXMLDocConsts in 'UXMLDocConsts.pas',
  UQuery in 'UQuery.pas',
  USearch in 'USearch.pas',
  UWarnings in 'UWarnings.pas',
  Hiliter.UPasLexer in 'Hiliter.UPasLexer.pas',
  UStringReader in 'UStringReader.pas',
  Hiliter.UAttrs in 'Hiliter.UAttrs.pas',
  Hiliter.UPersist in 'Hiliter.UPersist.pas',
  UColours in 'UColours.pas',
  FrMemoPreview in 'FrMemoPreview.pas' {MemoPreviewFrame: TFrame},
  IntfPreview in 'IntfPreview.pas',
  UMemoHelper in 'UMemoHelper.pas',
  FrCheckedTV in 'FrCheckedTV.pas' {CheckedTVFrame: TFrame},
  UTVCheckBoxes in 'UTVCheckBoxes.pas',
  UUIWidgetImages in 'UUIWidgetImages.pas',
  FrCategoryList in 'FrCategoryList.pas' {CategoryListFrame: TFrame},
  UCategoryListAdapter in 'UCategoryListAdapter.pas',
  FrCategoryDescEdit in 'FrCategoryDescEdit.pas' {CategoryDescEditFrame: TFrame},
  FrBrowserBase in 'FrBrowserBase.pas' {BrowserBaseFrame: TFrame},
  Browser.UController in 'Browser.UController.pas',
  Browser.IntfDocHostUI in 'Browser.IntfDocHostUI.pas',
  Browser.UIOMgr in 'Browser.UIOMgr.pas',
  Browser.UHTMLEvents in 'Browser.UHTMLEvents.pas',
  USimpleDispatch in 'USimpleDispatch.pas',
  Browser.UControlHelper in 'Browser.UControlHelper.pas',
  UHTMLDOMHelper in 'UHTMLDOMHelper.pas',
  UResourceUtils in 'UResourceUtils.pas',
  Browser.UUIMgr in 'Browser.UUIMgr.pas',
  Browser.UNulUIHandler in 'Browser.UNulUIHandler.pas',
  UUrlMonEx in 'UUrlMonEx.pas',
  UOleClientSite in 'UOleClientSite.pas',
  UCSSBuilder in 'UCSSBuilder.pas',
  UAnchors in 'UAnchors.pas',
  UDispatchList in 'UDispatchList.pas',
  UCSSUtils in 'UCSSUtils.pas',
  UProtocols in 'UProtocols.pas',
  FmSnippetsEditorDlg.FrActiveTextEditor in 'FmSnippetsEditorDlg.FrActiveTextEditor.pas' {SnippetsActiveTextEdFrame: TFrame},
  FmCompilersDlg.FrBase in 'FmCompilersDlg.FrBase.pas' {CompilersDlgBaseFrame: TFrame},
  FmCompilersDlg.FrCompiler in 'FmCompilersDlg.FrCompiler.pas' {CompilersDlgCompilerFrame: TFrame},
  FmCompilersDlg.FrLog in 'FmCompilersDlg.FrLog.pas' {CompilersDlgLogFrame: TFrame},
  FmCompilersDlg.FrNamespaces in 'FmCompilersDlg.FrNamespaces.pas' {CompilersDlgNamespacesFrame: TFrame},
  FmCompilersDlg.FrSearchDirs in 'FmCompilersDlg.FrSearchDirs.pas' {CompilersDlgSearchDirsFrame: TFrame},
  FmCompilersDlg.FrSwitches in 'FmCompilersDlg.FrSwitches.pas' {CompilersDlgSwitchesFrame: TFrame},
  FmCompilersDlg.UBannerMgr in 'FmCompilersDlg.UBannerMgr.pas',
  FmCompilersDlg.UCompilerListMgr in 'FmCompilersDlg.UCompilerListMgr.pas',
  UBrowseForFolderDlg in 'UBrowseForFolderDlg.pas',
  PJShellFolders in '3rdParty\PJShellFolders.pas',
  UDlgHelper in 'UDlgHelper.pas',
  UExeFileType in 'UExeFileType.pas',
  UMessageBox in 'UMessageBox.pas',
  UOpenDialogEx in 'UOpenDialogEx.pas',
  UCommonDlg in 'UCommonDlg.pas',
  UOpenDialogHelper in 'UOpenDialogHelper.pas',
  FrOverview in 'FrOverview.pas' {OverviewFrame: TFrame},
  IntfFrameMgrs in 'IntfFrameMgrs.pas',
  UCommandBars in 'UCommandBars.pas',
  UToolButtonEx in 'UToolButtonEx.pas',
  UView in 'UView.pas',
  UInitialLetter in 'UInitialLetter.pas',
  IntfNotifier in 'IntfNotifier.pas',
  UOverviewTreeState in 'UOverviewTreeState.pas',
  UViewItemTreeNode in 'UViewItemTreeNode.pas',
  USnippetsTVDraw in 'USnippetsTVDraw.pas',
  UOverviewTreeBuilder in 'UOverviewTreeBuilder.pas',
  UGroups in 'UGroups.pas',
  FrDetailView in 'FrDetailView.pas' {DetailViewFrame: TFrame},
  UDetailPageLoader in 'UDetailPageLoader.pas',
  UDetailPageHTML in 'UDetailPageHTML.pas',
  Compilers.UCompilers in 'Compilers.UCompilers.pas',
  Compilers.UBDS in 'Compilers.UBDS.pas',
  Compilers.UBorland in 'Compilers.UBorland.pas',
  Compilers.UCompilerBase in 'Compilers.UCompilerBase.pas',
  Compilers.URunner in 'Compilers.URunner.pas',
  UConsoleApp in 'UConsoleApp.pas',
  UPipe in 'UPipe.pas',
  Compilers.USearchDirs in 'Compilers.USearchDirs.pas',
  Compilers.UDelphi in 'Compilers.UDelphi.pas',
  Compilers.UFreePascal in 'Compilers.UFreePascal.pas',
  UHTMLTemplate in 'UHTMLTemplate.pas',
  UHTMLUtils in 'UHTMLUtils.pas',
  UJavaScriptUtils in 'UJavaScriptUtils.pas',
  USnippetHTML in 'USnippetHTML.pas',
  ActiveText.UHTMLRenderer in 'ActiveText.UHTMLRenderer.pas',
  Hiliter.UHiliters in 'Hiliter.UHiliters.pas',
  Hiliter.UPasParser in 'Hiliter.UPasParser.pas',
  UHTMLBuilder in 'UHTMLBuilder.pas',
  URTFStyles in 'URTFStyles.pas',
  URTFUtils in 'URTFUtils.pas',
  Hiliter.UCSS in 'Hiliter.UCSS.pas',
  UCompResHTML in 'UCompResHTML.pas',
  USnippetPageHTML in 'USnippetPageHTML.pas',
  UWBPopupMenus in 'UWBPopupMenus.pas',
  Browser.UHighlighter in 'Browser.UHighlighter.pas',
  UWBCommandBars in 'UWBCommandBars.pas',
  UGIFImageList in 'UGIFImageList.pas',
  UImageTags in 'UImageTags.pas',
  ULinkAction in 'ULinkAction.pas',
  FrHTMLPreview in 'FrHTMLPreview.pas' {HTMLPreviewFrame: TFrame},
  FrHTMLDlg in 'FrHTMLDlg.pas' {HTMLDlgFrame: TFrame},
  UNulDropTarget in 'UNulDropTarget.pas',
  FrEasterEgg in 'FrEasterEgg.pas' {EasterEggFrame: TFrame},
  FirstRun.FmWhatsNew.FrHTML in 'FirstRun.FmWhatsNew.FrHTML.pas' {WhatsNewHTMLFrame: TFrame},
  FrCodeGenPrefs in 'FrCodeGenPrefs.pas' {CodeGenPrefsFrame: TFrame},
  LVEx in '3rdParty\LVEx.pas',
  FrDisplayPrefs in 'FrDisplayPrefs.pas' {DisplayPrefsFrame: TFrame},
  UColorBoxEx in 'UColorBoxEx.pas',
  UColorDialogEx in 'UColorDialogEx.pas',
  FrGeneralPrefs in 'FrGeneralPrefs.pas' {GeneralPrefsFrame: TFrame},
  FrHiliterPrefs in 'FrHiliterPrefs.pas' {HiliterPrefsFrame: TFrame},
  FrPrintingPrefs in 'FrPrintingPrefs.pas' {PrintingPrefsFrame: TFrame},
  FrSnippetLayoutPrefs in 'FrSnippetLayoutPrefs.pas' {SnippetLayoutPrefsFrame: TFrame},
  FrSourcePrefs in 'FrSourcePrefs.pas' {SourcePrefsFrame: TFrame},
  Hiliter.UFileHiliter in 'Hiliter.UFileHiliter.pas',
  FrDetail in 'FrDetail.pas' {DetailFrame: TFrame},
  FrFixedHTMLDlg in 'FrFixedHTMLDlg.pas' {FixedHTMLDlgFrame: TFrame},
  FrHTMLTpltDlg in 'FrHTMLTpltDlg.pas' {HTMLTpltDlgFrame: TFrame},
  FrRTFPreview in 'FrRTFPreview.pas' {RTFPreviewFrame: TFrame},
  FrSelectSnippetsBase in 'FrSelectSnippetsBase.pas' {SelectSnippetsBaseFrame: TFrame},
  FrSelectUserSnippets in 'FrSelectUserSnippets.pas' {SelectUserSnippetsFrame: TFrame},
  FrSelectSnippets in 'FrSelectSnippets.pas' {SelectSnippetsFrame: TFrame},
  FrTextPreview in 'FrTextPreview.pas' {TextPreviewFrame: TFrame},
  ActiveText.URTFRenderer in 'ActiveText.URTFRenderer.pas',
  DB.UMetaData in 'DB.UMetaData.pas',
  Favourites.UFavourites in 'Favourites.UFavourites.pas',
  Favourites.UManager in 'Favourites.UManager.pas',
  Favourites.UPersist in 'Favourites.UPersist.pas',
  FirstRun.UConfigFile in 'FirstRun.UConfigFile.pas',
  FirstRun.UDatabase in 'FirstRun.UDatabase.pas',
  FirstRun.UIniFile in 'FirstRun.UIniFile.pas',
  FirstRun.UInstallInfo in 'FirstRun.UInstallInfo.pas',
  FirstRun.UMain in 'FirstRun.UMain.pas',
  SWAG.UCommon in 'SWAG.UCommon.pas',
  SWAG.UImporter in 'SWAG.UImporter.pas',
  SWAG.UPacketCache in 'SWAG.UPacketCache.pas',
  SWAG.UReader in 'SWAG.UReader.pas',
  SWAG.UVersion in 'SWAG.UVersion.pas',
  SWAG.UXMLProcessor in 'SWAG.UXMLProcessor.pas',
  UActionFactory in 'UActionFactory.pas',
  UBox in 'UBox.pas',
  UBrowseProtocol in 'UBrowseProtocol.pas',
  UCategoryAction in 'UCategoryAction.pas',
  UClipboardHelper in 'UClipboardHelper.pas',
  UCodeImportExport in 'UCodeImportExport.pas',
  UCodeImportMgr in 'UCodeImportMgr.pas',
  UCodeShareMgr in 'UCodeShareMgr.pas',
  UCompileMgr in 'UCompileMgr.pas',
  UCompileResultsLBMgr in 'UCompileResultsLBMgr.pas',
  UCopyInfoMgr in 'UCopyInfoMgr.pas',
  UCopySourceMgr in 'UCopySourceMgr.pas',
  UCopyViewMgr in 'UCopyViewMgr.pas',
  UDataBackupMgr in 'UDataBackupMgr.pas',
  UDatabaseLoader in 'UDatabaseLoader.pas',
  UDatabaseLoaderUI in 'UDatabaseLoaderUI.pas',
  UDataStreamIO in 'UDataStreamIO.pas',
  UDBUpdateMgr in 'UDBUpdateMgr.pas',
  UDetailTabAction in 'UDetailTabAction.pas',
  UDialogMgr in 'UDialogMgr.pas',
  UDirectoryCopier in 'UDirectoryCopier.pas',
  UDOSDateTime in 'UDOSDateTime.pas',
  UDropDownButtons in 'UDropDownButtons.pas',
  UEditSnippetAction in 'UEditSnippetAction.pas',
  UEmailHelper in 'UEmailHelper.pas',
  UFileProtocol in 'UFileProtocol.pas',
  UFileUpdater in 'UFileUpdater.pas',
  UFolderBackup in 'UFolderBackup.pas',
  UFormAligner in 'UFormAligner.pas',
  UHelpProtocol in 'UHelpProtocol.pas',
  UHiddenRichEdit in 'UHiddenRichEdit.pas',
  UHistory in 'UHistory.pas',
  UHistoryMenus in 'UHistoryMenus.pas',
  UHTMLHelp in 'UHTMLHelp.pas',
  UHTMLHelpMgr in 'UHTMLHelpMgr.pas',
  UHTTPProtocol in 'UHTTPProtocol.pas',
  UIniDataLoader in 'UIniDataLoader.pas',
  ULEDImageList in 'ULEDImageList.pas',
  UMainDisplayMgr in 'UMainDisplayMgr.pas',
  UMarquee in 'UMarquee.pas',
  UMemoCaretPosDisplayMgr in 'UMemoCaretPosDisplayMgr.pas',
  UMemoProgBarMgr in 'UMemoProgBarMgr.pas',
  UNotifier in 'UNotifier.pas',
  UPageSetupDialogEx in 'UPageSetupDialogEx.pas',
  UPageSetupDlgMgr in 'UPageSetupDlgMgr.pas',
  UPrintDocuments in 'UPrintDocuments.pas',
  UPrintEngine in 'UPrintEngine.pas',
  UPrintMgr in 'UPrintMgr.pas',
  URTFBuilder in 'URTFBuilder.pas',
  URTFCategoryDoc in 'URTFCategoryDoc.pas',
  URTFSnippetDoc in 'URTFSnippetDoc.pas',
  USaveDialogEx in 'USaveDialogEx.pas',
  USaveSnippetMgr in 'USaveSnippetMgr.pas',
  USaveSourceDlg in 'USaveSourceDlg.pas',
  USaveSourceMgr in 'USaveSourceMgr.pas',
  USaveUnitMgr in 'USaveUnitMgr.pas',
  USelectionIOMgr in 'USelectionIOMgr.pas',
  USnipKindListAdapter in 'USnipKindListAdapter.pas',
  USnippetAction in 'USnippetAction.pas',
  USnippetDoc in 'USnippetDoc.pas',
  USnippetIDListIOHandler in 'USnippetIDListIOHandler.pas',
  USnippetsChkListMgr in 'USnippetsChkListMgr.pas',
  USnippetSourceGen in 'USnippetSourceGen.pas',
  UStartUp in 'UStartUp.pas',
  UStatusBarMgr in 'UStatusBarMgr.pas',
  UTestCompile in 'UTestCompile.pas',
  UTestCompileUI in 'UTestCompileUI.pas',
  UTestUnit in 'UTestUnit.pas',
  UTestUnitDlgMgr in 'UTestUnitDlgMgr.pas',
  UTextSnippetDoc in 'UTextSnippetDoc.pas',
  UUniqueID in 'UUniqueID.pas',
  UUnitAnalyser in 'UUnitAnalyser.pas',
  UUnitsChkListMgr in 'UUnitsChkListMgr.pas',
  UUrl in 'UUrl.pas',
  UUserDBBackup in 'UUserDBBackup.pas',
  UUserDBMgr in 'UUserDBMgr.pas',
  UUserDBMove in 'UUserDBMove.pas',
  UVersionInfo in 'UVersionInfo.pas',
  UViewItemAction in 'UViewItemAction.pas',
  UWaitForThreadUI in 'UWaitForThreadUI.pas',
  UWBExternal in 'UWBExternal.pas',
  UWindowSettings in 'UWindowSettings.pas',
  UXMLDocHelper in 'UXMLDocHelper.pas',
  PJWdwState in '3rdParty\PJWdwState.pas',
  PJMD5 in '3rdParty\PJMD5.pas',
  PJStreamWrapper in '3rdParty\PJStreamWrapper.pas',
  IntfExternalObj in 'AutoGen\IntfExternalObj.pas',
  FmAboutDlg in 'FmAboutDlg.pas' {AboutDlg},
  FmActiveTextPreviewDlg in 'FmActiveTextPreviewDlg.pas' {ActiveTextPreviewDlg},
  FmAddCategoryDlg in 'FmAddCategoryDlg.pas',
  FmBugReportBaseDlg in 'FmBugReportBaseDlg.pas' {BugReportBaseDlg},
  FmCategoryEditDlg in 'FmCategoryEditDlg.pas' {CategoryEditDlg},
  FmCodeExportDlg in 'FmCodeExportDlg.pas' {CodeExportDlg},
  FmCodeImportDlg in 'FmCodeImportDlg.pas',
  FmCompErrorDlg in 'FmCompErrorDlg.pas' {CompErrorDlg},
  FmCompilersDlg in 'FmCompilersDlg.pas' {CompilersDlg},
  FmDBUpdateDlg in 'FmDBUpdateDlg.pas',
  FmDeleteCategoryDlg in 'FmDeleteCategoryDlg.pas' {DeleteCategoryDlg},
  FmDeleteUserDBDlg in 'FmDeleteUserDBDlg.pas' {DeleteUserDBDlg},
  FmDependenciesDlg in 'FmDependenciesDlg.pas' {DependenciesDlg},
  FmDuplicateSnippetDlg in 'FmDuplicateSnippetDlg.pas' {DuplicateSnippetDlg},
  FmEasterEgg in 'FmEasterEgg.pas' {EasterEggForm},
  FmFavouritesDlg in 'FmFavouritesDlg.pas' {FavouritesDlg},
  FmFindCompilerDlg in 'FmFindCompilerDlg.pas' {FindCompilerDlg},
  FmFindTextDlg in 'FmFindTextDlg.pas' {FindTextDlg},
  FmFindXRefsDlg in 'FmFindXRefsDlg.pas' {FindXRefsDlg},
  FmGenericDlg in 'FmGenericDlg.pas' {GenericDlg},
  FmGenericModalDlg in 'FmGenericModalDlg.pas' {GenericModalDlg},
  FmGenericNonModalDlg in 'FmGenericNonModalDlg.pas' {GenericNonModalDlg},
  FmGenericOKDlg in 'FmGenericOKDlg.pas' {GenericOKDlg},
  FmGenericViewDlg in 'FmGenericViewDlg.pas' {GenericViewDlg},
  FmNewHiliterNameDlg in 'FmNewHiliterNameDlg.pas' {NewHiliterNameDlg},
  FmPreferencesDlg in 'FmPreferencesDlg.pas' {PreferencesDlg},
  FmPreviewDlg in 'FmPreviewDlg.pas' {PreviewDlg},
  FmPrintDlg in 'FmPrintDlg.pas' {PrintDlg},
  FmRenameCategoryDlg in 'FmRenameCategoryDlg.pas' {RenameCategoryDlg},
  FmSelectionSearchDlg in 'FmSelectionSearchDlg.pas' {SelectionSearchDlg},
  FmSnippetsEditorDlg in 'FmSnippetsEditorDlg.pas' {SnippetsEditorDlg},
  FmSplash in 'FmSplash.pas' {SplashForm},
  FmSWAGImportDlg in 'FmSWAGImportDlg.pas',
  FmTestCompileDlg in 'FmTestCompileDlg.pas' {TestCompileDlg},
  FmTrappedBugReportDlg in 'FmTrappedBugReportDlg.pas' {TrappedBugReportDlg},
  FmUserBugReportDlg in 'FmUserBugReportDlg.pas' {UserBugReportDlg},
  FmUserDataPathDlg in 'FmUserDataPathDlg.pas' {UserDataPathDlg},
  FmUserHiliterMgrDlg in 'FmUserHiliterMgrDlg.pas' {UserHiliterMgrDlg},
  FmWaitDlg in 'FmWaitDlg.pas' {WaitDlg},
  FmWizardDlg in 'FmWizardDlg.pas' {WizardDlg},
  FirstRun.FmV4ConfigDlg in 'FirstRun.FmV4ConfigDlg.pas' {V4ConfigDlg},
  FirstRun.FmWhatsNew in 'FirstRun.FmWhatsNew.pas' {WhatsNewDlg};

{$R *.res}

begin
  TThemeServicesEx.SetAppropriateThemeMode;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSplashForm, SplashForm);
  Application.Run;
end.
