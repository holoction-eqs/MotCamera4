.class public abstract Lcom/google/common/collect/AbstractMultimap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# instance fields
.field public transient asMap:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

.field public transient keySet:Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

.field public transient values:Lcom/google/common/collect/AbstractMultimap$Values;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/Multimap;

    check-cast p0, Lcom/google/common/collect/AbstractListMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractListMultimap;->asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    move-result-object p0

    check-cast p1, Lcom/google/common/collect/AbstractListMultimap;

    invoke-virtual {p1}, Lcom/google/common/collect/AbstractListMultimap;->asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
