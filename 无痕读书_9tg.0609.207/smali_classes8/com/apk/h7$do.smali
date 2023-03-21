.class public Lcom/apk/h7$do;
.super Lcom/apk/bg;
.source "BaseReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/h7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h7;


# direct methods
.method public constructor <init>(Lcom/apk/h7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h7$do;->do:Lcom/apk/h7;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/h7$do;->do:Lcom/apk/h7;

    iget-object p1, p1, Lcom/apk/h7;->if:Lcom/apk/b7;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/apk/b7;->o(ZZ)V

    return-void
.end method
