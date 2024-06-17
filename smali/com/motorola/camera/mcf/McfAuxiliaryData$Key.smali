.class public final Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/McfAuxiliaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->mType:Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Type needs to be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Key needs a valid name"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, p1, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    iget-object v2, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->mType:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->mType:Ljava/lang/Class;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;->mName:Ljava/lang/String;

    return-object p0
.end method
