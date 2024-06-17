.class public final Lcom/airbnb/lottie/utils/LogcatLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final loggedMessages:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/LogcatLogger;->loggedMessages:Ljava/util/HashSet;

    return-void
.end method
