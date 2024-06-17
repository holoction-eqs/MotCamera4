.class public abstract Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract asString()Ljava/lang/String;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
