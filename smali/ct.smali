.class abstract Lct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lct;

.field public static final b:Lct;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcw;

    invoke-direct {v0}, Lcw;-><init>()V

    sput-object v0, Lct;->a:Lct;

    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    sput-object v0, Lct;->b:Lct;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method
