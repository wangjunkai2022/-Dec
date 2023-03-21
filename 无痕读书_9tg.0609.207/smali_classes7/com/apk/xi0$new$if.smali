.class public final Lcom/apk/xi0$new$if;
.super Lcom/apk/ph0;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/xi0$new;->else(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic case:I

.field public final synthetic else:I

.field public final synthetic try:Lcom/apk/xi0$new;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLcom/apk/xi0$new;II)V
    .locals 0

    iput-object p5, p0, Lcom/apk/xi0$new$if;->try:Lcom/apk/xi0$new;

    iput p6, p0, Lcom/apk/xi0$new$if;->case:I

    iput p7, p0, Lcom/apk/xi0$new$if;->else:I

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/apk/ph0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/xi0$new$if;->try:Lcom/apk/xi0$new;

    iget-object v0, v0, Lcom/apk/xi0$new;->if:Lcom/apk/xi0;

    iget v1, p0, Lcom/apk/xi0$new$if;->case:I

    iget v2, p0, Lcom/apk/xi0$new$if;->else:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/apk/xi0;->finally(ZII)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
