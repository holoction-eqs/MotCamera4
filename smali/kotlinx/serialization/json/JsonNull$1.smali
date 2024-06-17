.class public final Lkotlinx/serialization/json/JsonNull$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonNull$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonNull$1;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonNull$1;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonNull$1;->INSTANCE:Lkotlinx/serialization/json/JsonNull$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlinx/serialization/json/JsonNullSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

    return-object p0
.end method
