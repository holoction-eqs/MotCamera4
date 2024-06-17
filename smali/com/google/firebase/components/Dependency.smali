.class public final Lcom/google/firebase/components/Dependency;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final anInterface:Ljava/lang/Class;

.field public final injection:I

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    iput p1, p0, Lcom/google/firebase/components/Dependency;->type:I

    iput p2, p0, Lcom/google/firebase/components/Dependency;->injection:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/firebase/components/Dependency;

    iget-object v0, p1, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    if-ne v2, v0, :cond_0

    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    iget v2, p1, Lcom/google/firebase/components/Dependency;->type:I

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    iget p1, p1, Lcom/google/firebase/components/Dependency;->injection:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/firebase/components/Dependency;->type:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependency{anInterface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/components/Dependency;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "required"

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "optional"

    goto :goto_0

    :cond_1
    const-string v1, "set"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", injection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const-string p0, "deferred"

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unsupported injection: "

    invoke-static {v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    const-string p0, "provider"

    goto :goto_1

    :cond_4
    const-string p0, "direct"

    :goto_1
    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
