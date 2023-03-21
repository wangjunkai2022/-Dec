.class public Lcom/apk/h70$do;
.super Ljava/lang/Object;
.source "BaseAdProviderVideo.java"

# interfaces
.implements Lcom/apk/d50$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/h70;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h70;


# direct methods
.method public constructor <init>(Lcom/apk/h70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h70$do;->do:Lcom/apk/h70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h70$do;->do:Lcom/apk/h70;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/apk/h70;->case:Z

    .line 3
    iget-boolean v2, v0, Lcom/apk/h70;->else:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/apk/h70;->j(Landroid/app/Activity;)V

    .line 5
    iget-object p1, p0, Lcom/apk/h70$do;->do:Lcom/apk/h70;

    iput-boolean v1, p1, Lcom/apk/h70;->else:Z

    :cond_0
    return-void
.end method

.method public if(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/h70$do;->do:Lcom/apk/h70;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/apk/h70;->case:Z

    return-void
.end method
