.class public final synthetic Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_0

    const/16 p2, -0x67

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_1

    const/16 p2, -0x65

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
