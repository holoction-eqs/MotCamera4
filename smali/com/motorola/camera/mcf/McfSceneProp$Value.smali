.class public final Lcom/motorola/camera/mcf/McfSceneProp$Value;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfSceneProp$Value;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfSceneProp$Value;->mValue:Ljava/lang/Object;

    instance-of v0, p0, [Lcom/motorola/camera/mcf/McfScene;

    if-eqz v0, :cond_0

    check-cast p0, [Lcom/motorola/camera/mcf/McfScene;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [Lcom/motorola/camera/mcf/McfFaceBeauty;

    if-eqz v0, :cond_1

    check-cast p0, [Lcom/motorola/camera/mcf/McfFaceBeauty;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
