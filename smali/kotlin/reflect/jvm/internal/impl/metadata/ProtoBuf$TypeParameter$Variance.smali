.class public final enum Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

.field public static final enum IN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

.field public static final enum INV:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

.field public static final enum OUT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->IN:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    const-string v2, "OUT"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;-><init>(ILjava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->OUT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    const-string v3, "INV"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;-><init>(ILjava/lang/String;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->INV:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter$Variance;->value:I

    return p0
.end method
