.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0003\u000b\u000c\rB1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;",
        "Landroidx/preference/Preference;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "Companion",
        "SignatureTextWatcher",
        "WatermarkEditText",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public countTextView:Landroid/widget/TextView;

.field public signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

.field public signatureTextView:Landroid/widget/TextView;

.field public signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 5
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x7f04040a

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static checkSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isValidCodePoint(I)Z

    invoke-static {v4}, Ljava/lang/Character;->isIdeographic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    :goto_0
    rsub-int/lit8 v6, v3, 0x1e

    if-le v5, v6, :cond_2

    return-object v0

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v3, v5

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    :cond_3
    return-object v0
.end method

.method public static getSignatureTextLength(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    invoke-static {v2}, Ljava/lang/Character;->isIdeographic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "com.motorola.camera_watermark"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pref_key_signature"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->checkSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->setSignText(Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a03a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->countTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->setTvCountText(Ljava/lang/String;)V

    const v1, 0x7f0a03a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRawInputType(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    const v0, 0x7f0a03a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextView:Landroid/widget/TextView;

    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/UByte$Companion;->adjustMarginOnLargerDisplay(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public final setEnable(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->countTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-eqz p0, :cond_5

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_5
    return-void
.end method

.method public final setTvCountText(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120624

    goto :goto_0

    :cond_0
    const v0, 0x7f120623

    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInstance().getString(countStringRes)"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->countTextView:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->getSignatureTextLength(Ljava/lang/String;)I

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    const/16 p1, 0x1e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
