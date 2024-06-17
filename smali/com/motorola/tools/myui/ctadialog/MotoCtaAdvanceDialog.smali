.class public final Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public buttonMessage:Ljava/lang/CharSequence;

.field public isCtaBasicDialog:Z

.field public isOnlyPermission:Z

.field public mContentView:Landroid/widget/LinearLayout;

.field public negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public final permissionDescMap:Ljava/util/LinkedHashMap;

.field public permissionHeaderDesc:Ljava/lang/CharSequence;

.field public permissionSupplementDesc:Ljava/lang/CharSequence;

.field public positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public privacyContent:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f130310

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isCtaBasicDialog:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Ljava/lang/CharSequence;

    iput-boolean p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    iput-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/CharSequence;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionDescMap:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionSupplementDesc:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0403b8

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The theme id must be Theme.MyUI.DayNight.Dialog.Alert(or descendant)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0044

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const v0, 0x7f0a005d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0104

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a00ab

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020019

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x102001a

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v0, :cond_1

    iget-boolean v5, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isCtaBasicDialog:Z

    if-eqz v5, :cond_0

    const v5, 0x7f1205ef

    goto :goto_0

    :cond_0
    const v5, 0x7f1205ee

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f12001e

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v6, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v5}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const/4 v2, 0x1

    if-eqz v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isCtaBasicDialog:Z

    if-eqz v6, :cond_4

    const v6, 0x7f120178

    goto :goto_2

    :cond_4
    const v6, 0x7f12015a

    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v6, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v2}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    if-eqz v3, :cond_7

    const v3, 0x7f120087

    goto :goto_4

    :cond_7
    const v3, 0x7f120088

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->buttonMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_5
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-boolean v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d00dc

    iget-object v6, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const v0, 0x7f12037d

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f12037c

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b

    new-instance v7, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;

    const/4 v8, 0x3

    invoke-direct {v7, p0, v4, v8}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    const/16 v8, 0x11

    invoke-virtual {v6, v7, v3, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    throw v0

    :cond_d
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Ljava/lang/CharSequence;

    instance-of v3, v0, Landroid/text/SpannableString;

    if-eqz v3, :cond_e

    move-object v3, v0

    check-cast v3, Landroid/text/SpannableString;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v6, Landroid/text/style/ClickableSpan;

    invoke-virtual {v3, v5, v0, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_e

    array-length v0, v0

    if-lez v0, :cond_e

    :goto_6
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_e
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_10

    goto :goto_9

    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    const v3, 0x7f0d00c7

    invoke-virtual {v0, v3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_12
    const v1, 0x7f12034c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_8
    iget-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v4, v2}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_9
    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionSupplementDesc:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_a

    :cond_13
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0d00c8

    invoke-virtual {p1, v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionSupplementDesc:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_14
    :goto_a
    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set advance permission description map"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPermissionDescriptionResMap(Ljava/util/HashMap;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
