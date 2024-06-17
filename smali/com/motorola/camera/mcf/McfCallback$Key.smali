.class public final Lcom/motorola/camera/mcf/McfCallback$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_3

    const-class v1, Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/motorola/camera/mcf/McfCallback$Key;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/motorola/camera/mcf/McfCallback$Key;

    const-class p1, Ljava/lang/String;

    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x59685209

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "motorola.camera.mcf.callback.json"

    return-object p0
.end method
