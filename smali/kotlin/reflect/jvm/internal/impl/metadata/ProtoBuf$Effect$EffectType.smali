.class public final enum Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

.field public static final enum CALLS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

.field public static final enum RETURNS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

.field public static final enum RETURNS_NOT_NULL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    const-string v1, "RETURNS_CONSTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->RETURNS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    const-string v2, "CALLS"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;-><init>(ILjava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->CALLS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    const-string v3, "RETURNS_NOT_NULL"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;-><init>(ILjava/lang/String;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->RETURNS_NOT_NULL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Effect$EffectType;->value:I

    return p0
.end method
