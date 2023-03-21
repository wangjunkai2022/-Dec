.class public Lcom/apk/f70$do;
.super Ljava/lang/Object;
.source "BaseAdProviderSuper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/f70;->h(Ljava/lang/String;JZLcom/apk/b70;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Z

.field public final synthetic if:J

.field public final synthetic new:Lcom/apk/b70;

.field public final synthetic try:Lcom/apk/f70;


# direct methods
.method public constructor <init>(Lcom/apk/f70;Ljava/lang/String;JZLcom/apk/b70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f70$do;->try:Lcom/apk/f70;

    iput-object p2, p0, Lcom/apk/f70$do;->do:Ljava/lang/String;

    iput-wide p3, p0, Lcom/apk/f70$do;->if:J

    iput-boolean p5, p0, Lcom/apk/f70$do;->for:Z

    iput-object p6, p0, Lcom/apk/f70$do;->new:Lcom/apk/b70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/f70$do;->try:Lcom/apk/f70;

    iget-object v1, p0, Lcom/apk/f70$do;->do:Ljava/lang/String;

    iget-wide v2, p0, Lcom/apk/f70$do;->if:J

    iget-boolean v4, p0, Lcom/apk/f70$do;->for:Z

    iget-object v5, p0, Lcom/apk/f70$do;->new:Lcom/apk/b70;

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/apk/f70;->e(Ljava/lang/String;JZLcom/apk/b70;)V

    return-void
.end method
