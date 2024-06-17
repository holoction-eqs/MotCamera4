.class public final Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final samWithReceiverResolvers:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V
    .locals 2

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v1, "storageManager"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;->samWithReceiverResolvers:Ljava/lang/Iterable;

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->PACKAGE_NAME:Ljava/lang/String;

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method
