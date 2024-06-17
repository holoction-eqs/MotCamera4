.class public final Lcom/motorola/camera/settings/PersistVideoFormatBehavior;
.super Lcom/motorola/camera/settings/PersistBehavior;
.source "SourceFile"


# virtual methods
.method public final copyValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p3, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final load(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Lcom/motorola/camera/VideoFormat;
    .locals 1

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    new-instance p2, Lcom/motorola/camera/VideoFormat;

    invoke-direct {p2, p0}, Lcom/motorola/camera/VideoFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    const-string p2, "unable to load: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "PersistVideoFormatBehavior"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final bridge synthetic load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p3, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {p0, p3, p1, p2}, Lcom/motorola/camera/settings/PersistVideoFormatBehavior;->load(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Lcom/motorola/camera/VideoFormat;

    move-result-object p0

    return-object p0
.end method

.method public final performRead(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)V
    .locals 1

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {p0, v0, p2, p1}, Lcom/motorola/camera/settings/PersistVideoFormatBehavior;->load(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    return-void
.end method

.method public final performWrite(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V
    .locals 1

    check-cast p3, Lcom/motorola/camera/VideoFormat;

    iput-object p3, p0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/PersistBehavior;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/settings/PersistBehavior;->getKey(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/motorola/camera/VideoFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
