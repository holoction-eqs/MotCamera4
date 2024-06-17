.class public final enum Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

.field public static final enum ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

.field public static final enum CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

.field public static final enum COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

.field public static final enum ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

.field public static final enum ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

.field public static final enum INTERFACE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

.field public static final enum OBJECT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    const-string v2, "INTERFACE"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;-><init>(ILjava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    const-string v3, "ENUM_CLASS"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;-><init>(ILjava/lang/String;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    const-string v4, "ENUM_ENTRY"

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;-><init>(ILjava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    const-string v5, "ANNOTATION_CLASS"

    const/4 v6, 0x4

    invoke-direct {v4, v6, v5, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;-><init>(ILjava/lang/String;I)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    const-string v6, "OBJECT"

    const/4 v7, 0x5

    invoke-direct {v5, v7, v6, v7}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;-><init>(ILjava/lang/String;I)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->OBJECT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    const-string v7, "COMPANION_OBJECT"

    const/4 v8, 0x6

    invoke-direct {v6, v8, v7, v8}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;-><init>(ILjava/lang/String;I)V

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    filled-new-array/range {v0 .. v6}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->value:I

    return p0
.end method
