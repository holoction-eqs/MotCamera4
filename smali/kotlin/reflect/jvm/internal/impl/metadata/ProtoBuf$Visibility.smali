.class public final enum Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

.field public static final enum INTERNAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

.field public static final enum LOCAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

.field public static final enum PRIVATE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

.field public static final enum PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

.field public static final enum PROTECTED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

.field public static final enum PUBLIC:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->INTERNAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    const-string v2, "PRIVATE"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;-><init>(ILjava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    const-string v3, "PROTECTED"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;-><init>(ILjava/lang/String;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PROTECTED:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    const-string v4, "PUBLIC"

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;-><init>(ILjava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    const-string v5, "PRIVATE_TO_THIS"

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;-><init>(ILjava/lang/String;I)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    const-string v6, "LOCAL"

    const/4 v7, 0x5

    invoke-direct {v5, v7, v6, v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;-><init>(ILjava/lang/String;I)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->LOCAL:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    filled-new-array/range {v0 .. v5}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;->value:I

    return p0
.end method
