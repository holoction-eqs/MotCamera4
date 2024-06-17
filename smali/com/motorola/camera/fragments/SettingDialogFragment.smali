.class public Lcom/motorola/camera/fragments/SettingDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mEditText:Landroid/widget/EditText;

.field public mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public mSetting:Lcom/motorola/camera/settings/Setting;

.field public mSupportedValues:Ljava/util/ArrayList;

.field public mTitle:Ljava/lang/String;

.field public mValueList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public initEditText()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const v2, 0x7f1203ed

    goto :goto_0

    :cond_0
    const v2, 0x7f1203ef

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->getKeyViewType(Lcom/motorola/camera/settings/SettingsManager$Key;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const v2, 0x80001

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v1, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/16 v2, 0x2002

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    new-instance v1, Landroidx/appcompat/widget/SearchView$10;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$10;-><init>(Lcom/motorola/camera/fragments/SettingDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public initSupportedValues()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSetting:Lcom/motorola/camera/settings/Setting;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSetting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getCheckValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSetting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/Setting;->getCheckValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSetting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v1}, Lcom/motorola/camera/settings/Setting;->getCheckValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSetting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {p0}, Lcom/motorola/camera/settings/Setting;->getCheckValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public initValueList()V
    .locals 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d00f0

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    new-instance v1, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fragments/SettingDialogFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSetting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {v1}, Lcom/motorola/camera/settings/Setting;->getCheckValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onCreateDialog()Landroid/app/Dialog;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    const-string v1, "SettingDialogFragment.TITLE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    const-string v1, "SettingDialogFragment.KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    iput-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSetting:Lcom/motorola/camera/settings/Setting;

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingDialogFragment;->initSupportedValues()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00ee

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0470

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    const v2, 0x7f0a0471

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/SettingDialogFragment;I)V

    const v3, 0x7f1203ee

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fragments/SettingDialogFragment;I)V

    const v3, 0x7f1203ec

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingDialogFragment;->initEditText()V

    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingDialogFragment;->initValueList()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
