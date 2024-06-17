.class public final Lcom/motorola/camera/SecureMediaIdsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# static fields
.field public static sInstance:Lcom/motorola/camera/SecureMediaIdsManager;


# instance fields
.field public final mMediaIds:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/motorola/camera/SecureMediaIdsManager;
    .locals 1

    sget-object v0, Lcom/motorola/camera/SecureMediaIdsManager;->sInstance:Lcom/motorola/camera/SecureMediaIdsManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/SecureMediaIdsManager;

    invoke-direct {v0}, Lcom/motorola/camera/SecureMediaIdsManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/SecureMediaIdsManager;->sInstance:Lcom/motorola/camera/SecureMediaIdsManager;

    :cond_0
    sget-object v0, Lcom/motorola/camera/SecureMediaIdsManager;->sInstance:Lcom/motorola/camera/SecureMediaIdsManager;

    return-object v0
.end method


# virtual methods
.method public final addMediaId(Landroid/net/Uri;JI)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/SecureMediaIdsManager;->mMediaIds:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    if-nez p0, :cond_0

    new-instance p0, Lcom/motorola/camera/SecureDataHelper;

    invoke-direct {p0}, Lcom/motorola/camera/SecureDataHelper;-><init>()V

    sput-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    :cond_0
    sget-object p0, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    const/4 p2, 0x1

    if-ne p4, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "SecureDataHelper"

    if-nez p1, :cond_2

    const-string p0, "Uri is null"

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isVideo"

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/util/LinkedList;

    invoke-virtual {p0, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isFromCurrentSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/motorola/camera/SecureMediaIdsManager;->addMediaId(Landroid/net/Uri;JI)V

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 0

    return-void
.end method

.method public final onSaveProcessing(Lcom/motorola/camera/CameraData;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mSecure:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->isFromCurrentSession()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/motorola/camera/SecureMediaIdsManager;->addMediaId(Landroid/net/Uri;JI)V

    return-void
.end method
