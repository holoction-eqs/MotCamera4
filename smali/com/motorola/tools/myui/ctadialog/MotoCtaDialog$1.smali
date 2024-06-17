.class public final Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ActivityStarter;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->$r8$classId:I

    const-class v1, Lcom/motorola/camera/CtaPrivacyActivity;

    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->val$context:Landroid/content/Context;

    const-string v3, "widget"

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    sget p1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 6

    iget v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->$r8$classId:I

    const/4 v1, 0x0

    const v2, 0x7f060072

    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;->val$context:Landroid/content/Context;

    const v4, 0x7f0403b8

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void

    :sswitch_0
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    filled-new-array {v4}, [I

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :sswitch_1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    filled-new-array {v4}, [I

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
