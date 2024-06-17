.class public abstract Lkotlin/properties/ObservableProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public beforeChange(Lkotlin/reflect/KProperty;)V
    .locals 0

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final setValue(Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkotlin/properties/ObservableProperty;->beforeChange(Lkotlin/reflect/KProperty;)V

    iput-object p2, p0, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p2}, Lkotlin/properties/ObservableProperty;->afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
