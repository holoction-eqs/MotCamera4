.class public final Landroidx/appcompat/app/AlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$dialog:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->$r8$classId:I

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->val$dialog:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->$r8$classId:I

    iget-object p4, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p4, Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->val$dialog:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AlertController;

    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-boolean p1, p4, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void

    :goto_0
    check-cast p4, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object p0, p4, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p0, p4, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p4, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p0, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    invoke-virtual {p4}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
