.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "private_to_this"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getInternalDisplayName()Ljava/lang/String;
    .locals 0

    const-string p0, "private/*private to this*/"

    return-object p0
.end method
