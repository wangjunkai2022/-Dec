.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/c;
.super Ljava/lang/Object;
.source "JavaCrash.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/b;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/c;->a:Landroid/content/Context;

    invoke-static {p1, p2, v0, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;->a(JLandroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_int108/c;->a:Landroid/content/Context;

    sget-object p3, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;

    invoke-virtual {p3}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/e;->a()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/e;

    move-result-object p2

    sget-object p3, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;->c:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;

    invoke-virtual {p2, p3, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/bykvm_19do/e;->a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;

    move-result-object p1

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;->a()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;

    move-result-object p2

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_for12/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
