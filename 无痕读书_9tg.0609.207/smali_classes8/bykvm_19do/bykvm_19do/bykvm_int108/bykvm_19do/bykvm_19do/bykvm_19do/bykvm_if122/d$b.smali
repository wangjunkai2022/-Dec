.class public Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d$b;
.super Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_new1/g;
.source "LogThreadCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

.field public final synthetic d:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d;Ljava/lang/String;ILbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d;

    iput p3, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d$b;->b:I

    iput-object p4, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d$b;->c:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    invoke-direct {p0, p2}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_new1/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "==> monitor upload index2:"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_for12/c;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d$b;->c:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;

    sget-object v1, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d;->h:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;

    iget v2, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d$b;->b:I

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/g;->a(Lorg/json/JSONObject;)Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d$b;->d:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d;)Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;

    move-result-object v1

    iget v2, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d$b;->b:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/c;->a(Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;ZJ)V

    .line 4
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/d;->h:Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->h0()V

    return-void
.end method
