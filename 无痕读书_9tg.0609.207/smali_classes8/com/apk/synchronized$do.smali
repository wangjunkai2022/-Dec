.class public Lcom/apk/synchronized$do;
.super Lcom/apk/bg;
.source "AdViewText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/synchronized;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/synchronized;


# direct methods
.method public constructor <init>(Lcom/apk/synchronized;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/synchronized$do;->do:Lcom/apk/synchronized;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/synchronized$do;->do:Lcom/apk/synchronized;

    iget-object p1, p1, Lcom/apk/synchronized;->new:Lcom/apk/b;

    invoke-virtual {p1}, Lcom/apk/b;->for()V

    .line 2
    iget-object p1, p0, Lcom/apk/synchronized$do;->do:Lcom/apk/synchronized;

    iget-object p1, p1, Lcom/apk/synchronized;->for:Lcom/apk/d1;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/d1;->do()V

    :cond_0
    return-void
.end method
