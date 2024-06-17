.class public final synthetic Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    return-void
.end method


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3

    sget v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "calbrtnvalue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "keytype"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "keytag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2, p3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x43a16f25 -> :sswitch_2
        -0x308c19e7 -> :sswitch_1
        0x328360d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
