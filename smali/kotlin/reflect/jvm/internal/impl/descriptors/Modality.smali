.class public final enum Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public static final enum ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public static final enum FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public static final enum OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public static final enum SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    const-string v1, "FINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    const-string v2, "SEALED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    const-string v3, "OPEN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    const-string v4, "ABSTRACT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object v0
.end method
