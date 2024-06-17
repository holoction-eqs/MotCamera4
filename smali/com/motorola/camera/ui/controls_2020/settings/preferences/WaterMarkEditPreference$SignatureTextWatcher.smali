.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public textChanged:Z

.field public final waterMarkEditPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;)V
    .locals 1

    const-string v0, "waterMarkEditPreference"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;->waterMarkEditPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;->waterMarkEditPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->checkSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->setTvCountText(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/service/WatermarkGenerator;->setSignText(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v2, "com.motorola.camera_watermark"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "pref_key_signature"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/io/Serializable;)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;->textChanged:Z

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "s"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;->waterMarkEditPreference:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->getSignatureTextLength(Ljava/lang/String;)I

    move-result p2

    const/16 p4, 0x1e

    if-le p2, p4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->checkSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method
