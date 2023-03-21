.class public final Lcom/apk/yi0;
.super Lcom/apk/ph0;
.source "TaskQueue.kt"


# instance fields
.field public final synthetic case:Lcom/apk/qd0;

.field public final synthetic try:Lcom/apk/xi0$new;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0$new;Lcom/apk/qd0;ZLcom/apk/lj0;Lcom/apk/pd0;Lcom/apk/qd0;)V
    .locals 0

    iput-object p5, p0, Lcom/apk/yi0;->try:Lcom/apk/xi0$new;

    iput-object p6, p0, Lcom/apk/yi0;->case:Lcom/apk/qd0;

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/apk/ph0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/yi0;->try:Lcom/apk/xi0$new;

    iget-object v0, v0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    .line 2
    iget-object v1, v0, Lcom/apk/xi0;->if:Lcom/apk/xi0$for;

    .line 3
    iget-object v2, p0, Lcom/apk/yi0;->case:Lcom/apk/qd0;

    iget-object v2, v2, Lcom/apk/qd0;->do:Ljava/lang/Object;

    check-cast v2, Lcom/apk/lj0;

    invoke-virtual {v1, v0, v2}, Lcom/apk/xi0$for;->if(Lcom/apk/xi0;Lcom/apk/lj0;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
