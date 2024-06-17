.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;
.super Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
.source "SourceFile"


# static fields
.field public static final Instance:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;->Instance:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v1, "FallbackBuiltIns"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->createBuiltInsModule(Z)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getPlatformDependentDeclarationFilter()Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;
    .locals 0

    sget-object p0, Lkotlin/UInt$Companion;->INSTANCE$6:Lkotlin/UInt$Companion;

    return-object p0
.end method
