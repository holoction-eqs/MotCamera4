.class public final Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"


# instance fields
.field public final advancePermissionDescMap:Ljava/util/LinkedHashMap;

.field public appIcon:I

.field public appName:Ljava/lang/String;

.field public final basicPermissionDescMap:Ljava/util/LinkedHashMap;

.field public buttonMessage:Ljava/lang/String;

.field public isOnlyPermission:Z

.field public mButtonMessageView:Landroid/widget/TextView;

.field public mContentView:Landroid/widget/LinearLayout;

.field public final mDialogBackgroundColor:I

.field public negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public permissionHeaderDesc:Ljava/lang/String;

.field public permissionSupplementDesc:Ljava/lang/String;

.field public positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public privacyContent:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .locals 5

    const v0, 0x7f13019a

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appIcon:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appName:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Ljava/lang/CharSequence;

    iput-boolean v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->isOnlyPermission:Z

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->basicPermissionDescMap:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->advancePermissionDescMap:Ljava/util/LinkedHashMap;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mDialogBackgroundColor:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010054

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mDialogBackgroundColor:I

    :cond_0
    iget p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mDialogBackgroundColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/16 v1, 0xa

    if-gt p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v1, 0x7f060071

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mDialogBackgroundColor:I

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0403b8

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The alert dialog theme must be MotoCtaAppTheme.Dialog.Alert.DayNight (or descendant)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DesktopMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-ne p1, v0, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_3
    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_5

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    goto :goto_4

    :cond_5
    move p1, v1

    :goto_4
    if-eqz p1, :cond_6

    goto :goto_7

    :cond_6
    :goto_5
    const p1, 0x7f0d0046

    :goto_6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    goto :goto_8

    :cond_7
    :goto_7
    const p1, 0x7f0d0047

    goto :goto_6

    :goto_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mDialogBackgroundColor:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->basicPermissionDescMap:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->advancePermissionDescMap:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_9

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must set basic permission description map or advance permission description map"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_9
    const v2, 0x7f0a006e

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x1020016

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x1020019

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x102001a

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f0a0104

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    const v7, 0x7f0a00ab

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v2, :cond_a

    iget v8, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appIcon:I

    if-eqz v8, :cond_a

    invoke-static {v7, v8}, Lkotlin/reflect/TypesJVMKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    const/4 v2, 0x0

    if-eqz v4, :cond_d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, ""

    goto :goto_a

    :cond_b
    iget-object v9, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->appName:Ljava/lang/String;

    :goto_a
    aput-object v9, v0, v1

    const v9, 0x7f1205f0

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_c
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_b
    if-eqz v5, :cond_f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f12001e

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c

    :cond_e
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    new-instance v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    if-eqz v6, :cond_12

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f120178

    goto :goto_d

    :cond_10
    const v0, 0x7f12015a

    :goto_d
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_e

    :cond_11
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    new-instance v0, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;

    const/16 v4, 0x9

    invoke-direct {v0, v4, p0, v7}, Lcom/motorola/camera/editor/ui/FilterButtonView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_13

    goto/16 :goto_10

    :cond_13
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->buttonMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_14
    iget-boolean v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->isOnlyPermission:Z

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    const v4, 0x7f120087

    goto :goto_f

    :cond_15
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    const v4, 0x7f120089

    goto :goto_f

    :cond_16
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    const v4, 0x7f12008b

    goto :goto_f

    :cond_17
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    const v4, 0x7f120088

    goto :goto_f

    :cond_18
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    const v4, 0x7f12008a

    goto :goto_f

    :cond_19
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mButtonMessageView:Landroid/widget/TextView;

    const v4, 0x7f12008c

    :goto_f
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1a
    :goto_10
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-boolean v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->isOnlyPermission:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1b

    goto/16 :goto_12

    :cond_1b
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d00dc

    iget-object v5, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v2, 0x7f12037d

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f12037c

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1c

    new-instance v6, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;

    invoke-direct {v6, p0, v7, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v8, 0x11

    invoke-virtual {v5, v6, v4, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1c
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_1d
    throw v2

    :cond_1e
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->privacyContent:Ljava/lang/CharSequence;

    instance-of v4, v2, Landroid/text/SpannableString;

    if-eqz v4, :cond_1f

    move-object v4, v2

    check-cast v4, Landroid/text/SpannableString;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    if-eqz v2, :cond_1f

    array-length v2, v2

    if-lez v2, :cond_1f

    :goto_11
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1f
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_20
    :goto_12
    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_21

    goto :goto_14

    :cond_21
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_14

    :cond_22
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    const v4, 0x7f0d00c7

    invoke-virtual {v0, v4, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionHeaderDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_23
    const v2, 0x7f12034c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_13
    iget-object v2, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v7, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_24
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    new-instance p1, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v7, v1}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/app/AppCompatDialog;Landroid/content/Context;I)V

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_25
    :goto_14
    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_15

    :cond_26
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d00c8

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->permissionSupplementDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_27
    :goto_15
    return-void
.end method
