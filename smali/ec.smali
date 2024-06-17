.class final Lec;
.super Lei;
.source "SourceFile"


# instance fields
.field private final synthetic a:Ldx;


# direct methods
.method public constructor <init>(Ldx;)V
    .locals 0

    iput-object p1, p0, Lec;->a:Ldx;

    invoke-direct {p0, p1}, Lei;-><init>(Ldx;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Ldz;

    iget-object p0, p0, Lec;->a:Ldx;

    invoke-direct {v0, p0}, Ldz;-><init>(Ldx;)V

    return-object v0
.end method
