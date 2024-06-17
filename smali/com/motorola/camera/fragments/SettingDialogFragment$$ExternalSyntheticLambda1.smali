.class public final synthetic Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fragments/SettingDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/SettingDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fragments/SettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget p2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    const-string p4, ""

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fragments/SettingDialogFragment;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;

    sget p1, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->$r8$clinit:I

    iget-object p1, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->getListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    :goto_1
    iget-object p3, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/AdapterView;->getCount()I

    move-result p3

    if-ge p2, p3, :cond_2

    iget-object p3, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p5, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mValueList:Landroid/widget/ListView;

    invoke-virtual {p5, p2}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string p2, ", "

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
