.class public final Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

.field public final synthetic this$1:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;Lkotlin/reflect/jvm/internal/KPackageImpl;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$1:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KPackageImpl;Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$1:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->$r8$classId:I

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$0:Lkotlin/reflect/jvm/internal/KPackageImpl;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data$members$2;->this$1:Lkotlin/reflect/jvm/internal/KPackageImpl$Data;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v1, v1, v0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->scope$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "<get-scope>(...)"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-virtual {v2, p0, v0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getMembers$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;I)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KPackageImpl$Data;->access$getKotlinClass(Lkotlin/reflect/jvm/internal/KPackageImpl$Data;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->classHeader:Landroidx/core/app/NotificationCompatBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->getMultifileClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_2

    iget-object v0, v2, Lkotlin/reflect/jvm/internal/KPackageImpl;->jClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
