.class public final Landroidx/work/Data$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mValues:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/AbstractMap;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/AbstractMap;

    return-void
.end method


# virtual methods
.method public final putAll(Ljava/util/HashMap;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroidx/work/Data$Builder;->mValues:Ljava/util/AbstractMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_8

    const-class v4, Ljava/lang/Byte;

    if-eq v3, v4, :cond_8

    const-class v4, Ljava/lang/Integer;

    if-eq v3, v4, :cond_8

    const-class v4, Ljava/lang/Long;

    if-eq v3, v4, :cond_8

    const-class v4, Ljava/lang/Float;

    if-eq v3, v4, :cond_8

    const-class v4, Ljava/lang/Double;

    if-eq v3, v4, :cond_8

    const-class v4, Ljava/lang/String;

    if-eq v3, v4, :cond_8

    const-class v4, [Ljava/lang/Boolean;

    if-eq v3, v4, :cond_8

    const-class v4, [Ljava/lang/Byte;

    if-eq v3, v4, :cond_8

    const-class v4, [Ljava/lang/Integer;

    if-eq v3, v4, :cond_8

    const-class v4, [Ljava/lang/Long;

    if-eq v3, v4, :cond_8

    const-class v4, [Ljava/lang/Float;

    if-eq v3, v4, :cond_8

    const-class v4, [Ljava/lang/Double;

    if-eq v3, v4, :cond_8

    const-class v4, [Ljava/lang/String;

    if-ne v3, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const-class v4, [Z

    if-ne v3, v4, :cond_2

    check-cast v0, [Z

    invoke-static {v0}, Landroidx/work/Data;->convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-class v4, [B

    if-ne v3, v4, :cond_3

    check-cast v0, [B

    invoke-static {v0}, Landroidx/work/Data;->convertPrimitiveByteArray([B)[Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-class v4, [I

    if-ne v3, v4, :cond_4

    check-cast v0, [I

    invoke-static {v0}, Landroidx/work/Data;->convertPrimitiveIntArray([I)[Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const-class v4, [J

    if-ne v3, v4, :cond_5

    check-cast v0, [J

    invoke-static {v0}, Landroidx/work/Data;->convertPrimitiveLongArray([J)[Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const-class v4, [F

    if-ne v3, v4, :cond_6

    check-cast v0, [F

    invoke-static {v0}, Landroidx/work/Data;->convertPrimitiveFloatArray([F)[Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    const-class v4, [D

    if-ne v3, v4, :cond_7

    check-cast v0, [D

    invoke-static {v0}, Landroidx/work/Data;->convertPrimitiveDoubleArray([D)[Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "has invalid type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    return-void
.end method
