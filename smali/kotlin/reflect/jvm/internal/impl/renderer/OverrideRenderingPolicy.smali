.class public final enum Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

.field public static final enum RENDER_OPEN:Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

.field public static final enum RENDER_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    const-string v1, "RENDER_OVERRIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;->RENDER_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    const-string v2, "RENDER_OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;->RENDER_OPEN:Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    const-string v3, "RENDER_OPEN_OVERRIDE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/renderer/OverrideRenderingPolicy;

    return-object v0
.end method
