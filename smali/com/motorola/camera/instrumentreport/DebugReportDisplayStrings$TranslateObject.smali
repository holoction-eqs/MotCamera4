.class public Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mMappedTag:Ljava/lang/String;

.field public final mTranslateCamera:Z

.field public final mTranslateMode:Z

.field public final synthetic this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZ)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mMappedTag:Ljava/lang/String;

    .line 3
    iput-boolean p3, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateCamera:Z

    iput-boolean p4, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateMode:Z

    return-void
.end method


# virtual methods
.method public getDisplayString(Ljava/lang/String;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    const-string p3, "coldstart"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    move p1, v0

    :catch_0
    :cond_0
    const-string p3, " - "

    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mMappedTag:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {v0, p3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->this$0:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;

    iget-object v0, v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mColdStartStringMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 p1, -0x1

    :try_start_1
    const-string v1, "mode"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move v1, p1

    :goto_0
    iget-boolean v2, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateMode:Z

    if-eqz v2, :cond_3

    if-eq v1, p1, :cond_2

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "Unknown"

    :goto_1
    invoke-static {v0, p3, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :try_start_2
    const-string p1, "camera"

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string p1, ""

    :goto_2
    iget-boolean p0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->mTranslateCamera:Z

    if-eqz p0, :cond_4

    invoke-static {v0, p3, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method
