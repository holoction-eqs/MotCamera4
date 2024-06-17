.class public final Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/scenedetection/scene/Scene;


# instance fields
.field public final optType:I

.field public final sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public final textResource:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;I)V
    .locals 1

    const-string v0, "sceneType"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;->optType:I

    iput p2, p0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;->textResource:I

    return-void
.end method


# virtual methods
.method public final getOptType$enumunboxing$()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;->optType:I

    return p0
.end method

.method public final bridge synthetic getPersistOnLensSwitch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-object p0
.end method

.method public final getTextResource()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;->textResource:I

    return p0
.end method
