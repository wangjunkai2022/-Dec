.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Lcom/apk/ns;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->a(I)V

    .line 2
    new-instance v0, Lcom/apk/ns$do;

    invoke-direct {v0}, Lcom/apk/ns$do;-><init>()V

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->a(Lcom/apk/ns;)V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 2
    sput p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->a:I

    return-void
.end method

.method public static a(Lcom/apk/ns;)V
    .locals 0

    .line 1
    sput-object p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b:Lcom/apk/ns;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b:Lcom/apk/ns;

    if-eqz p0, :cond_0

    sget p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->a:I

    const/4 p1, 0x2

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    sget-object p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->b:Lcom/apk/ns;

    if-eqz p0, :cond_0

    sget p0, Lbykvm_19do/bykvm_19do/bykvm_19do/t0;->a:I

    const/4 p1, 0x3

    :cond_0
    return-void
.end method
