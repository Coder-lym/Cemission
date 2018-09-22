package com.graduation.util;

import java.awt.Font;
import java.awt.Rectangle;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.axis.NumberTickUnit;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.LineAndShapeRenderer;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 * 折线图工具类
 * @author Administrator
 *
 */
public class FoldLine {

	/**
	 * 创建一个折线图
	 */
	public static JFreeChart createFoldLine(DefaultCategoryDataset dataset){
		JFreeChart chart = ChartFactory.createLineChart("碳排放值变化", "年份", "碳排放值", dataset,PlotOrientation.VERTICAL,true,true,true);
		//数据的行数，即折现的条数
		int datasetSize = dataset.getRowCount();
//		System.out.println(datasetSize);
		getChartByFont(chart,datasetSize);
		return chart;
	}
	
	/**
	 * 处理折线图上的文字
	 */
	private static void getChartByFont(JFreeChart chart,int datasetSize){
		//处理主标题的文字
		chart.getTitle().setFont(new Font("宋体",Font.BOLD,18));
		//处理子标题文字
		chart.getLegend().setItemFont(new Font("宋体",Font.BOLD,15));
		//获取图表区域
		CategoryPlot categoryPlot = (CategoryPlot)chart.getPlot();
		//获取X轴
		CategoryAxis categoryAxis = (CategoryAxis)categoryPlot.getDomainAxis();
		//获取Y轴
		NumberAxis numberAxis = (NumberAxis)categoryPlot.getRangeAxis();
		//处理x轴上的文字
		categoryAxis.setTickLabelFont(new Font("宋体",Font.BOLD,12));
		//处理x轴外的文字
		categoryAxis.setLabelFont(new Font("宋体",Font.BOLD,12));
		//处理y轴上的文字
		numberAxis.setTickLabelFont(new Font("宋体",Font.BOLD,15));
		//处理y轴外的文字
		numberAxis.setLabelFont(new Font("宋体",Font.BOLD,15));
		//处理y轴上显示的刻度
		numberAxis.setAutoTickUnitSelection(false);
		NumberTickUnit unit = new NumberTickUnit(500);
		numberAxis.setTickUnit(unit);
		//获取绘图区域
		LineAndShapeRenderer lineAndShapeRenderer = (LineAndShapeRenderer)categoryPlot.getRenderer();
		//在图形上显示文字
		lineAndShapeRenderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
		lineAndShapeRenderer.setBaseItemLabelsVisible(true);
		lineAndShapeRenderer.setBaseItemLabelFont(new Font("宋体",Font.BOLD,10));
		//在图形上添加转折点（小矩形）
		Rectangle shape = new Rectangle(5, 5);
	    for (int i = 0; i < datasetSize; i++) {
	        lineAndShapeRenderer.setSeriesShape(i, shape);
	        lineAndShapeRenderer.setSeriesShapesVisible(i, true);
	    }
	}
}
