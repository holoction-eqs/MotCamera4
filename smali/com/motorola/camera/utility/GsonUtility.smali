.class public abstract Lcom/motorola/camera/utility/GsonUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertFromJson(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
    .locals 5

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    new-instance v1, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;

    invoke-direct {v1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;-><init>()V

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v0, 0xf4240

    div-long/2addr v3, v0
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, p0

    const/4 p0, 0x0

    :goto_0
    const-string v1, "GsonUtility"

    const-string v2, "failed while converting json to media record. Error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p0
.end method

.method public static convertToJson(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    new-instance v1, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;

    invoke-direct {v1}, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;-><init>()V

    iget-object v2, v0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
